import matplotlib.pyplot as plt
import pandas as pd
import pandas_datareader.data as web
from datetime import datetime as dt
import plotly.graph_objects as go
from plotly.subplots import make_subplots
import yfinance as yahooFinance
import datetime
import yfinance as yf

Fecha_Inicio = input('\n-------------------------------\nIndicar fecha INICIO: YYYY,MM,DD: ')
Fecha_Fin = input('\n-------------------------------\nIndicar fecha FINAL: YYYY,MM,DD: ')
Activo = input('\n----------------------------------\nActivo BTC-USD,ETC-USD: ')

startDate = datetime.datetime(2023, 11, 1)

# endDate , as per our convenience we can modify
endDate = datetime.datetime(2024, 2, 7)

GetFacebookInformation = yf.Ticker("BTC-USD")

GetFacebookInformation = GetFacebookInformation.history(start="2023-6-1", end="2024-2-6")
datos= GetFacebookInformation

# define the data
candlestick = go.Candlestick(
    x=datos.index,
    open=datos['Open'],
    high=datos['High'],
    low=datos['Low'],
    close=datos['Close'],
    name="Evolucion activo"
)

# create the figure
fig = go.Figure(data=[candlestick])

# plot the figure
fig.show()
datos['MA5'] = datos.Close.rolling(5).mean()

scatter = go.Scatter(
      x=datos.index,
      y=datos.MA5,
      line=dict(color='black', width=1),
      name="Evolucion 30 días"
)

fig = go.Figure(data=[candlestick, scatter])
fig.show()

# create a figure with a secondary axis
fig = make_subplots(specs=[[{"secondary_y": True}]])

fig.add_trace(
      candlestick,
      secondary_y=False
  )

fig.add_trace(
      scatter,
      secondary_y=False
  )

fig.add_trace(
    go.Bar(x=datos.index, y=datos['Volume'], opacity=0.1, marker_color='blue', name="volume"),secondary_y=True
  )
fig.layout.yaxis2.showgrid=False
fig.show()


