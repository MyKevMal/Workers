import React, { useState, useEffect }  from 'react';
import {Link} from "react-router-dom";

function getLS() {
  var newLSState;

  switch(localStorage.getItem("listFilter")) {
		case "0":
		newLSState = 0;
		break;
		case "1":
		newLSState = 1;
		break;
		case "2":
		newLSState = 2;
		break;
		case "3":
		newLSState = 3;
		break;
		case "4":
		newLSState = 4;
		break;
		default:
		localStorage.setItem('listFilter', "0");
		newLSState = 0;
		break;
	}

  return newLSState;
}

function LieferscheinAnzeige(props) {
  return (
    <Link to={"Lieferschein/" + props.id}>{props.name}<span className="stayRight">{props.datum}</span></Link>
  )
}

function DataList(props) {

  const [listItems, setListItems] = useState([]);

  useEffect(() => {
    fetchData();
    // eslint-disable-next-line
  }, [props.dataFilter]);

  function fetchData() {
    fetch('http://localhost/backend/getLS.php', {
      method: 'POST',
      credentials: 'include',
      body: JSON.stringify({dataFilter: props.dataFilter})
    }).then((res) => {
      if(res.ok) {
        return res.json();
      } else {
        throw Error(res.statusText);
      }
    }).then(json => {
      setListItems(json.message);
    });
  }

  return (
    <>
    <div className="dataList">
    {typeof listItems === 'string' ? listItems : listItems.map((ls) => <LieferscheinAnzeige key={ls.id} id={ls.id} name={ls.name} datum={ls.datum} />)}
    </div>
    </>
  )
}

function SelectLSState(props) {
  return (
    <>
      <select value={props.selectedValue} onChange={props.handleSelect}  className="selectButton" title="Einträge Filtern" id="filterButton">
        <option className="emoji" value="0">unbearbeitet</option>
        <option className="emoji" value="1">Lieferschein ausgedruckt</option>
        <option className="emoji" value="2">zurückgeschrieben</option>
        <option className="emoji" value="3">Rückschreibzettel ausgedruckt</option>
      </select>
    </>
  )
}

export function Lieferscheinprogramm() {

  const [selectedValue, setSelectedValue] = useState(getLS());

  function handleSelect(e) {
    localStorage.setItem('listFilter', e.target.value);
    setSelectedValue(e.target.value);
  }

  return (
    <>
    <main>
      <nav>
        <Link className="emoji" title="Lieferschein schreiben" to={"/Lieferscheinprogramm/LieferscheinSchreiben"}>📝</Link>
        <Link className="emoji" title="Warenliste" to={"Waren"}>🍻+</Link>
        <SelectLSState handleSelect={handleSelect} selectedValue={selectedValue} />
        <button title="Alle Lieferscheine ausdrucken" className="emoji navButton" id="ausdruckAll">🖨<small><i>A</i></small></button>
      </nav>
      <DataList dataFilter={selectedValue} />
    </main>
    </>
  )
}
