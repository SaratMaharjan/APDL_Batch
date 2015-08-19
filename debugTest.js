function my_func() {
    debugger;
    var my_array = new Array();
    for(var i = 0; i < 10; i++) {
        my_array[i] = 2*i;
    }
}

my_func();