import { useMap } from 'react-leaflet'

function MapController(props) {
  const map = useMap()
  map.flyTo(props.mapData.center, 13)

  return null
}

export default MapController;