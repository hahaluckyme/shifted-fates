/* eslint-disable jsx-a11y/anchor-is-valid */
const ReactGA = require('react-ga').default;
if (process.env.NODE_ENV === 'production') {
  ReactGA.initialize('UA-143865453-3');
} else {
  ReactGA.initialize('UA-143865453-2');
}

const React = require('react');

const GameButton = require('./GameButton').default;
const ScrollBox = require('./ScrollBox').default;
const data = require('data-loader').default;

const {
  isMobile,
} = require('react-device-detect');

class GameWindow extends React.Component {
  ended = false;
  state = {
    button_depressions: {},
    prev_history_seen: 0,
    history_seen: -1,
    history: [],
    choices: [],
    directions: {},
    cur_room: null,
    cur_choices: {},
    cur_zone: null,
    cur_resolve: null,
    is_at_bottom: true,
  };

  async componentDidMount() {
    document.addEventListener('keydown', this.onKeyDown.bind(this));
    document.addEventListener('keyup', this.onKeyUp.bind(this));
    window.onblur = () => this.setState({
      button_depressions: {},
    });
    ReactGA.pageview(window.location.pathname + window.location.search);
    data.hook(this);
    this.loadScene('Introduction');
  }

  async loadScene(scene_name) {
    this.playScene(data[scene_name]);
  }

  async goTo(room) {
    await this.setState({
      cur_room: room,
    });
    await this.playScene(room.Enter);
    // console.log(this.save());
    while (Object.keys(this.state.cur_choices).length === 0 && !this.ended) {
      if (room.GridChoices) {
        await this.playScene(room.GridChoices);
      }
      if (room.Choices) {
        await this.playScene(room.Choices);
      }

      if (!room.GridChoices && !room.Choices) {
        return;
      }
    }
  }

  async playScene(scene_func) {
    ReactGA.event({
      category: 'scene',
      action: scene_func.parent_id || 'global',
      label: scene_func.id,
    });
    await scene_func();
  }

  end() {
    this.ended = true;
    this.setState(prevState => ({
      history_seen: prevState.prev_history_seen,
    }));
  }

  save() {
    const save_data = {};
    for (const key of Object.keys(data)) {
      if (typeof data[key] === 'object') {
        const scenes = Object.getOwnPropertyNames(data[key]);
        const state_keys = Object.getOwnPropertyNames(Object.getPrototypeOf(data[key]))
          .filter(prop => !scenes.includes(prop) && prop !== 'constructor');

        const state = {};
        for (const state_key of state_keys) {
          state[state_key] = data[key][state_key];
        }

        if (Object.keys(state).length > 0) {
          save_data[key] = state;
        }
      }
    }
    return save_data;
  }

  async showChoices(choices, cur_resolve) {
    await this.setState(prevState => ({
      history_seen: prevState.prev_history_seen,
    }));
    await this.setState({
      cur_choices: choices,
      cur_resolve: cur_resolve,
    });
  }

  async pickChoice(choice_name) {
    await this.setState(prevState => ({
      prev_history_seen: prevState.history.length,
    }));
    await this.print(`> ${choice_name}`);
    const temp_resolve = this.state.cur_resolve;
    const sub_scene = this.state.cur_choices[choice_name];
    await this.setState({
      cur_choices: {},
    });

    await this.playScene(sub_scene);
    temp_resolve();
  }

  async print(node) {
    await this.setState(prevState => ({
      history: prevState.history.concat([node]),
    }));
  }

  async onKeyDownImpl(hotkey) {
    await this.setState(prev_state => ({
      button_depressions: {
        ...prev_state.button_depressions,
        [hotkey]: true,
      },
    }));
    const label_map = this.getLabelMap();
    const label = label_map[hotkey];
    if (label && this.state.cur_choices[label]) {
      this.pickChoice(label);
    }
  }

  async onKeyUpImpl(hotkey) {
    await this.setState(prev_state => ({
      button_depressions: {
        ...prev_state.button_depressions,
        [hotkey]: undefined,
      },
    }));
  }

  async onKeyDown(event) {
    const key = event.key.toLowerCase();
    if (!event.ctrlKey) {
      if ('12345qwertasdfg'.includes(key)) {
        await this.onKeyDownImpl(key);
      } else if (key === ' ') {
        if (
          Object.keys(this.state.choices).length === 1
          && Object.keys(this.state.directions).length === 0
          && Object.keys(this.state.choices)[0] === '...'
        ) {
          await this.onKeyDownImpl('1');
          await this.onKeyUpImpl('1');
          event.preventDefault();
        }
      }
    }
  }

  onKeyUp(event) {
    const key = event.key.toLowerCase();
    if ('12345qwertasdfg'.includes(key)) {
      this.onKeyUpImpl(key);
    }
  }

  getLabelMap() {
    const {cur_choices} = this.state;
    const choice_labels = Object.keys(cur_choices).filter(
      e => !['Down', 'North', 'Up', 'West', 'South', 'East'].includes(e),
    );
    return {
      '1': choice_labels[0],
      '2': choice_labels[1],
      '3': choice_labels[2],
      '4': choice_labels[3],
      '5': choice_labels[4],

      'q': cur_choices.Down && 'Down',
      'w': cur_choices.North && 'North',
      'e': cur_choices.Up && 'Up',
      'r': choice_labels[5],
      't': choice_labels[6],

      'a': cur_choices.West && 'West',
      's': cur_choices.South && 'South',
      'd': cur_choices.East && 'East',
      'f': choice_labels[7],
      'g': choice_labels[8],
    };
  }

  render() {
    const {button_depressions} = this.state;
    const label_map = this.getLabelMap();

    const LinkedGameButton = (props) => {
      const label = label_map[props.hotkey];
      return (
        <GameButton
          depressed={button_depressions[props.hotkey]}
          hotkey={props.hotkey}
          scene={this.state.cur_choices[label]}
          label={label}
          onClick={async () => {
            await this.onKeyDownImpl(props.hotkey);
            await this.onKeyUpImpl(props.hotkey);
          }}
        />
      );
    };

    const LinkedGameLink = (props) => {
      const label = label_map[props.hotkey];
      if (!label) {
        return null;
      }
      if (!this.state.cur_choices[label]) {
        return (
          <a
            className="link"
          >
            [{props.hotkey.toUpperCase()}] {label}
          </a>
        );
      }
      return (
        <a
          className="link active"
          href="#"
          onClick={async () => {
            await this.onKeyDownImpl(props.hotkey);
            await this.onKeyUpImpl(props.hotkey);
          }}
        >
          [{props.hotkey.toUpperCase()}] {label}
        </a>
      );
    };

    const {
      history,
      cur_room,
      ...state
    } = this.state;

    let minimap = null;
    if (cur_room) {
      const Grid = cur_room.zone.Grid;
      const width = Math.max(...Grid.map(column => column.length));
      const height = Grid.length;

      minimap = '';
      for (let y = 0; y < height; y++) {
        for (let x = 0; x < width; x++) {
          const elem = Grid[y][x];
          if (elem == null) {
            minimap += ' ';
          } else if (typeof(elem) === 'string') {
            minimap += elem[0];
          } else if (elem == cur_room) {
            minimap += 'x';
          } else {
            minimap += elem.name[0];
          }
        }
        minimap += '\n';
      }
    }

    return (
      <div className="game row fill">
        {!isMobile && (
          <div className="sidebar column">
            <pre className="sidetopbar fill">
              {JSON.stringify(state, null, 2)}
            </pre>
            <div className="centered">
              <pre className="minimap">
                {minimap}
              </pre>
            </div>
          </div>
        )}
        <div className="main fill column">
          <ScrollBox
            history={this.state.history}
            seen={this.state.history_seen}
          >
            <div className="text unseen column">
              <LinkedGameLink hotkey="1" />
              <LinkedGameLink hotkey="2" />
              <LinkedGameLink hotkey="3" />
              <LinkedGameLink hotkey="4" />
              <LinkedGameLink hotkey="5" />
              <LinkedGameLink hotkey="r" />
              <LinkedGameLink hotkey="t" />
              <LinkedGameLink hotkey="f" />
              <LinkedGameLink hotkey="g" />
            </div>
          </ScrollBox>
          <div className="buttons row">
            <div className="column fill">
              <LinkedGameButton hotkey='q' />
              <LinkedGameButton hotkey='a' />
            </div>
            <div className="column fill">
              <LinkedGameButton hotkey='w' />
              <LinkedGameButton hotkey='s' />
            </div>
            <div className="column fill">
              <LinkedGameButton hotkey='e' />
              <LinkedGameButton hotkey='d' />
            </div>
          </div>
        </div>
      </div>
    );
  }

}

export default GameWindow;
