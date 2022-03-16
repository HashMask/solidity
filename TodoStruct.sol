// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract TodoStruct {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string memory _text, bool _completed) public {

        //positional
        todos.push(Todo(_text, _completed));

        //key value
        Todo({
            text: _text,
            completed: _completed
        });

        //declarative
        Todo memory todo;
        todo.text = _text;
        todo.completed = _completed;
    }

    function get(uint8 _index) public view returns (string memory text, bool completed) {
        require(_index >= todos.length - 1, "index is out of bounds");
        return (todos[_index].text, todos[_index].completed);
    }

    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}