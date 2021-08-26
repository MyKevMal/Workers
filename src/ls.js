import React, { useState, useEffect }  from 'react';
import {MessageCont} from "./index";

export function LieferscheinSchreiben() {
  const [messageForm, setMessageForm] = useState("");
  //form States
  const [kundenname, setKundenname] = useState("");
  const [lieferart, setLieferart] = useState(false);
  //End form States
  //productForm States
  const [ware, setWare] = useState("");
  const [listItems, setListItems] = useState([]);
  const [currentId, setCurrentId] = useState();
  const [currentFl, setCurrentFl] = useState("");
  const [currentFlCheck, setCurrentFlCheck] = useState(0);
  const [productIds, setProductIds] = useState([]);
  const [productCounts, setProductCounts] = useState([]);
  const [productFl, setProductFl] = useState([]);
  //End productForm States
  //toggle States
  const [toggleKundenname, setToggleKundenname] = useState(true);
  const [toggleLieferart, setToggleLieferart] = useState(false);
  const [toggleWarenInput, setToggleWarenInput] = useState(false);
  //End toggle States
  function handleChange(e) {
    switch(e.target.name) {
      case "kundenname":
      setKundenname(e.target.value);
      break;
      case "ware":
      setWare(e.target.value);
      if(e.target.value.length >= 3) { fetch("http://localhost/backend/searchProduct.php", {
          method: 'POST',
          credentials: 'include',
          body: JSON.stringify({ware: e.target.value})
        }).then(res => res.json()).then(json => {
          setListItems(json.message);
        });
      }
      break;
      case "productCount":
      setCurrentFl(e.target.value);
      break;
      case "flaschen":
      setCurrentFlCheck(e.target.checked);
      break;
      default:break;
    }
  }

  function handleSubmit(e) {
    switch (e.target.name) {
      case "nameSubmit":
      if(kundenname !=="") {
        setToggleKundenname(false);
        setToggleLieferart(true);
        setMessageForm('');
      }else { setMessageForm('Feld bitte ausfüllen.'); }
      break;
      case "productButton":
      setWare(listItems[e.target.id].ware);
      setCurrentId(listItems[e.target.id].id);
      document.getElementById('productCount').focus();
      listItems[e.target.id].isdrink === 1 ? setCurrentFlCheck(true) : setCurrentFlCheck(false);
      break;
      case "productSubmit":
      setProductIds([...productIds, currentId]);
      setProductCounts([...productCounts, currentFl]);
      setProductFl([...productFl, currentFlCheck]);
      setWare("");
      setCurrentFl("");
      setCurrentFlCheck(false);
      document.getElementById('currentProduct').focus();
      break;
      case "formSubmit":
      fetch("http://localhost/backend/saveLieferschein.php", {
        method: 'POST',
        credentials: 'include',
        body: JSON.stringify({
          consumerName: kundenname,
          lieferart: lieferart,
          warenInput: productIds,
          warenAnzahl: productCounts,
          flaschen: productFl
        })
      }).then(res => res.json()).then(data => console.log(data));
      break;
      default:break;
    }
  }

  function handleRadio(e) {
    setLieferart(e.target.value);
    setToggleLieferart(false);
    setToggleWarenInput(true);
  }

  return(
    <>
    <main>
      <h2>Lieferschein schreiben</h2>
      <form id="LSForm" name="LSForm">
        {toggleKundenname ? <Kundenname kundenname={kundenname} handleChange={handleChange} handleSubmit={handleSubmit} autoFocus /> : null}
        {toggleLieferart ? <SelectLieferart handleRadio={handleRadio} /> : null}
      </form>
      <div id="bestellListe">
          {toggleWarenInput ? <AddProducts listItems={listItems} handleSubmit={handleSubmit} handleChange={handleChange} currentFlCheck={currentFlCheck} currentFl={currentFl} inputValue={ware} /> : null}
      </div>
      <MessageCont message={messageForm} />
    </main>
    </>
  )
}

function SelectLieferart(props) {
  return (
    <>
    <label><input onClick={props.handleRadio} type="radio" name="lieferart" value="1" />Selbstabholung</label>
		<label><input onClick={props.handleRadio} type="radio" name="lieferart" value="2" />Anlieferung</label>
    </>
  )
}

function Kundenname(props) {

  useEffect(() => {
    document.getElementById('consumerNameArea').focus();
  }, []);
  return (
    <>
		  <textarea value={props.kundenname} onChange={props.handleChange} id="consumerNameArea" name="kundenname" placeholder="Name und Adresse"/>
		  <button onClick={props.handleSubmit} type="button" name="nameSubmit">✔</button>
    </>
  )
}

function AddProducts(props) {
  useEffect(() => {
    document.getElementById('currentProduct').focus();
  }, []);
  return (
    <>
    <input onChange={props.handleChange} value={props.inputValue} type="text" id="currentProduct" name="ware" placeholder="Ware..." autoComplete="off" />
    {props.listItems.map((productButtons, index) => <ProductButton key={productButtons.id} handleSubmit={props.handleSubmit} index={index} name={productButtons.ware} />)}
    <input onChange={props.handleChange} value={props.currentFl} id="productCount" type="number" name="productCount" placeholder="Anzahl..." autoComplete="off" />
    <label><input onChange={props.handleChange} checked={props.currentFlCheck} name="flaschen" type="checkbox" />Flaschen</label>
    <button onClick={props.handleSubmit} name="productSubmit" className="emoji">➕</button>
    <input onClick={props.handleSubmit} type="submit" name="formSubmit" value="✔"/>
    </>
  )
}

function ProductButton(props) {
  return(
    <button name="productButton" onClick={props.handleSubmit} id={props.index} >{props.name}</button>
  )
}
