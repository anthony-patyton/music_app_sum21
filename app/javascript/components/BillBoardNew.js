import React from 'react';

const BillBoardNew = ({ billboard }) => {
  //if we fail the form it doesn't loose all the data
  const { title, img } = billboard;
  const defaultTitle = title ? title : "";
  const defaultImg = img ? img : "";
    return(
      <>
        <h1>New Billboard</h1>
        <form action='/bill_boards' method="post">
        <input
          placeholder="title"
          type='text'
          defaultValue= {defaultTitle}
          name= "billboard[title]"
          />
        <button type="submit" >Add BillBoard</button>
        </form>
      </>
    )
}

export default BillBoardNew;