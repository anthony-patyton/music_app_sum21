import React from 'react';

const BillBoard = ({ billboard }) => {
  const { id, title, created_at, img } = billboard
  return(
  <>
    <h1>{ title }</h1>
    <h3>{ created_at }</h3>
    <a href="/bill_boards">
      Back
    </a>
  </>
  )
}

export default BillBoard;