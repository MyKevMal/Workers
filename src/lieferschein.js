import React, { useState, useEffect }  from 'react';
import {MessageCont} from "./index";

export function Lieferschein() {

  const [formMessage, setFormMessage] = useState();
  const [lsId, setLsId] = useState();
  const [status, setStatus] = useState();
  const [name, setName] = useState();
  const [datum, setDatum] = useState();
  const [shipping, setShipping] = useState();
  const [warenMetas, setWarenMetas] = useState([]);
  const [warenDatas, setWarenDatas] = useState([]);

  useEffect(() => {
    fetch('http://localhost/backend/getLSComplete.php', {
      method: 'POST',
      credentials: 'include',
      body: JSON.stringify({id: window.location.pathname.split('/').pop()})
    }).then(res => res.json()).then((data) => {
      console.log(data.message);
      if(data.action === 0) {
        setFormMessage(data.message);
      }else {
        const lsDatas = data.message[0];
        setWarenMetas(data.message[1]);
        setWarenDatas(data.message[2]);
        console.log(lsDatas);
        setStatus(lsDatas.status);
        setLsId(lsDatas.id);
        setName(lsDatas.name);
        setDatum(lsDatas.datum);
        setShipping(lsDatas.Selbstabholung);
      }
    });
  }, []);

  console.log(status);

  return(
    <>
    <main>
      <Nav status={status} />
      <MessageCont message={formMessage} />
      <div id='anzeigeId'>Identifikationsnummer: {lsId}</div>
      <span>{name}</span><span id="datum">{datum}</span>
      <div>
      Per
      {shipping === 2 ? " Anlieferung" : " Selbstabholung"}
      </div>
      <hr />
      <table>
        <thead id="productHead">
			    <tr>
				    <th>Ware</th>
				    <th className="anzahl">Menge</th>
				    <th>Zurück</th>
				    <th className="gesamtSpalte">Gesamt</th>
			    </tr>
		    </thead>
      <LSBody warenMetas={warenMetas} warenDatas={warenDatas} />
      </table>
    </main>
    </>
  )
}

function Nav(props) {
  return(
    <>
    <nav>
      {props.status == 0 || props.status == 1 ? <button type='submit' title='Zurückschreiben' className='emoji' id='zSButton'>🗒</button> : null}
      <button title="Lieferschein bearbeiten" className="emoji" id="editLS">✏</button>
      <button title="Lieferschein ausdrucken" className="emoji" id="druckLS">🖨<small><i>L</i></small></button>
      {props.status == 2 || props.status == 3 ? <button title="Rückschreibzettel ausdrucken" className="emoji" id="druckRZ">🖨<small><i>R</i></small></button> : null}
    </nav>
    </>
  )
}

function LSBody(props) {
  let productDec = [];
  for (var i = 0; i < props.warenDatas.length; i++) {
    productDec.push(props.warenDatas[i].flaschen == 1 ? " Fl." :
                    props.warenDatas[i].isdrink == 1 || props.warenDatas.maxfl == 0 ? " Stk." :
                    " K.");
  }
  return(
    <tbody id="productBody">
    {props.warenDatas.map((index, i) => <tr key={i} datasort={index.flaschen}><td>{index.ware}</td><td className="anzahl">{props.warenMetas[i].anzahl + productDec[i]}</td></tr>)}
		</tbody>
  )
}
