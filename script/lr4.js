/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function js_task1() {
    var nowTime = new Date();
    var time = new Date();
    time.setHours(8);
    time.setMinutes(30);
    time.setSeconds(0);
    return Math.floor((nowTime - time) / 60000);
}
function js_task2() {
    var nowTime = new Date();
    var time = new Date();
    time.setDate(14);
    time.setMonth(1);
    if ((nowTime - time) <= 0)
        time.setFullYear(nowTime.getFullYear() - 1);
    alert((nowTime - time) / 86400000);
}
