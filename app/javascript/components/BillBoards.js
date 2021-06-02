import React from 'react';

const BillBoards = ({ billboards }) => (
  <>
    <h1 className='header'>All Billboards</h1>
    <ul>
      {
        billboards.map( b => (
          <li key={b.id}>
            { b.title }
            {" "}
            <a href={"http://localhost:3000/billboards/" + b.id }>
              show
            </a>
          </li>
        ))
      }
    </ul>
  </>
)


export default BillBoards;
// JSX is a combination of HTML and JS