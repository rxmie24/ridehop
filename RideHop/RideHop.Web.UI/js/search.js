var _from = "";
var _to = "";
var _date = "";
var _time = "";
var _step = 1;

$(document).ready(function () {
    $('#search_ride').attr('readonly', 'true');

    $('#search_ride').click(function () {
        show_help(get_step());
    });

    $('#input_helper_next').click(function () {
        if (validate_data()) {
            switch (_step) {
                case 1:
                    _from = $('#input_helper_value').val();
                    update_query();
                    _step++;
                    show_help(_step);
                    break;
                case 2:
                    _to = $('#input_helper_value').val();
                    update_query();
                    _step++;
                    show_help(_step);
                    break;
                case 3:
                    _date = $('#input_helper_value').val();
                    update_query();
                    _step++;
                    show_help(_step);
                    break;
                case 4:
                    _time = $('#input_helper_value').val();
                    update_query();
                    if (query_is_valid($('#search_ride').val()))
                    {
                        $('#search_form').submit();
                    }
                    break;
            }
        }
    });

    $("#input_helper_value").keyup(function (event) {
        if (event.keyCode == 13) {
            $("#input_helper_next").click();
        }
    });

    $('#input_helper_previous').click(function () {
        if (validate_data()) {
            switch (_step) {
                case 2:
                    _to = $('#input_helper_value').val();
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
                case 3:
                    _date = $('#input_helper_value').val();
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
                case 4:
                    _time = $('#input_helper_value').val();
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
            }
        } else {
            switch (_step) {
                case 2:
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
                case 3:
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
                case 4:
                    update_query();
                    _step--;
                    show_help(_step);
                    break;
            }
        }
    });
});

function query_is_valid(query)
{
    return new RegExp('from [a-zA-Z,]+ to [a-zA-Z,]+ on [0-9]{2}/[0-9]{2}/[0-9]{4} at [0-9]{2}:[0-9]{2}',"i").test(query);
}

function get_step()
{
    if (_from == "") {
        return 1;
    }
    else if (_to == "") {
        return 2;
    }
    else if (_date == "") {
        return 3;
    }
    else if (_time == "") {
        return 4;
    }
    else return -1;
}

function show_help(step)
{
    _step = step;
    if(step<0 || step>4)
    {
        return;
    }
    else
    {
        switch(step)
        {
            case 1:
                $('#input_helper_value').timepicker('remove');
                $('#input_helper_value').datepicker('destroy');
                $('#input_helper_value').val(_from);
                $('#input_helper_title').html("I'm going from");
                $('#input_helper_previous').css('visibility','hidden');
                $('#input_helper_next').html('Next');
                break;
            case 2:
                $('#input_helper_value').timepicker('remove');
                $('#input_helper_value').datepicker('destroy');
                $('#input_helper_value').val(_to);
                $('#input_helper_title').html("I'm going to");
                $('#input_helper_previous').css('visibility', 'visible');
                $('#input_helper_next').html('Next');
                break;
            case 3:
                $('#input_helper_value').timepicker('remove');
                $('#input_helper_title').html("I'm leaving on");
                $('#input_helper_value').val(_date);
                $('#input_helper_value').datepicker({
                    onSelect: function (date) {
                        _date = date;
                        update_query();
                    }
                });
                $("#input_helper_value").datepicker("option", "dateFormat", "mm/dd/yy");
                $('#input_helper_previous').css('visibility', 'visible');
                $('#input_helper_next').html('Next');
                break;
            case 4:
                $('#input_helper_value').datepicker('destroy');
                $('#input_helper_value').val(_time);
                $('#input_helper_value').timepicker({ 'timeFormat': 'H:i' });
                $('#input_helper_value').on('changeTime', function () {
                    _time = $(this).val();
                    update_query();
                });
                $('#input_helper_title').html("I'm leaving at");
                $('#input_helper_previous').css('visibility', 'visible');
                $('#input_helper_next').html('Search');
                break;
        }
        var floater_left = (step - 1) * ($('#input_helper').width() - $('#input_helper_floater').width() - 10 /* 10 is the left and right padding of the floater */) / 3;
        $('#input_helper_floater').css('visibility', 'visible').animate({ opacity: '100%' , left:floater_left });
    }
}

function validate_data()
{
    var test = $('#input_helper_value').val();
    var regex;
    switch (_step) {
        case 1:
            regex = new RegExp("[a-zA-Z,]+");
            break;
        case 2:
            regex = new RegExp("[a-zA-Z,]+");
            break;
        case 3:
            regex = new RegExp("[0-9]{2}/[0-9]{2}/[0-9]{4}");
            break;
        case 4:
        default:
            regex = new RegExp("[0-9]{2}:[0-9]{2}");
            break;
    }
    return regex.test(test);
}

function update_query()
{
    var result = '';
    if(_from!='')
    {
        result += "from "+_from;
    }
    if (_to != '') {
        result += " to " + _to;
    }
    if(_date != '')
    {
        result += " on " + _date;
    }
    if (_time != '') {
        result += " at " + _time;
    }
    $('#search_ride').val(result);
}