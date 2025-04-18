import { Actor, HttpAgent } from '@dfinity/agent';
import { idlFactory as first_idl, canisterId as first_id } from 'dfx-generated/first';

const agent = new HttpAgent();
const first = Actor.createActor(first_idl, { agent, canisterId: first_id });

document.getElementById("clickMeBtn").addEventListener("click", async () => {
  const name = document.getElementById("name").value.toString();
  const greeting = await first.greet(name);

  document.getElementById("greeting").innerText = greeting;
});
