import React from "react";

const Artists = ({ courses }) => {
  return (
    <>
      <h1>Artists</h1>
      <a href="/artists/view">View Artists</a>
      <br />
      <h2>{ Artists.name <= 0 ? "No Artists by that name" : "" }</h2> 
      { artists.map((artist) => (
        <div>
          <a href={`/artist/${artist.id}`}>{artist.name}</a>
        </div>
      ))}
    </>
  )
}

export default Artist;