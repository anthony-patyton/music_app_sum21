import React form 'react';

const BillBoardNew = ({ billboard }) => {
  //if we fail the form it doesn't loose all the data
  const { title, img } = billboard
  const defaultTitle = title ? title : ""
  const defaultImg = img ? img : ""
    return(
      <>
        <h1>New Page</h1>
        <form action='/billboards' method="post">
        <input>
          placeholder="title"
          type='text'
          defaultValue={defaultTitle}
          name="billboard[title]""
        </input>
        <input>
          placeholder="img"
          type='url'
          defaultValue={defaultImg}
          name="billboard[img]
        </input>
        <button type="submit">Add BillBoard</button>
        </form>
      </>
    )
}

export default BillBoardNew;