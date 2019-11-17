
[AutoKey](https://github.com/autokey/autokey) is used to generate press events.

All events are sent from `Alt` + `jkl`. It is an important note because it will block some hot-keys (`ctrl+alt+l` in Idea for example).

AutoKey doesn't distinguish between right and left `Alt` so it is impossible here to bind `right Alt` only.

There is a hack possible to avoid it (`Super+jkl` and remap `right Alt` to `Super`) but it is pretty complex, I'll post it only if demand exists.


## Setup
* Install AutoKey
* copy `CURSOR` directory to `.config/autokey/data` **TODO create it**
* restart AutoKey