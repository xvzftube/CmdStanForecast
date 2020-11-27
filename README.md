# CmdStanForecast
A random walk forecast

Here is that string of pipes at the end
```
mlr --csv --skip-comments cut -r -x -f "__$" o.csv | mlr --csv cut -r -f "^f.*" | mlr --csv reshape -r ".*" -o k,v | termbox --g k --y v
```
