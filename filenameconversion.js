function snakeFilename(ExcerciseName) {
    arr = ExcerciseName.split(" ");
    for (let i = 0; i < arr.length; i++) {
        arr[i] = arr[i].toLowerCase();
    }
    return ` touch ${arr.join("_")}.sql ; code $_ `;
};