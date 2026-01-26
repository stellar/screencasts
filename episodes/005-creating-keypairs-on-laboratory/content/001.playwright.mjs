/**
 * @param  {import("@fnando/playwright-video").Utils} utils Utilities
 */
export async function run({
  visit,
  sleep,
  clickLink,
  exists,
  fillIn,
  waitUntilSatisfied,
}) {
  await visit("https://lab.stellar.org");
  await sleep(14000);

  await clickLink({ text: "Account" });
  await clickLink({ text: "Create Account Keypair" });
  await sleep(5000);

  await clickLink({ text: "Generate keypair" });
  await sleep(2000);
  await clickLink({ text: "Save Keypair" });
  await sleep(500);

  await fillIn({ selector: "#saved-ls-name", text: "default" });
  await clickLink({ text: "Save" });
  await sleep(7000);

  await clickLink({ text: "Fund account with Friendbot" });

  await waitUntilSatisfied(async () => exists(".Alert--success"), 10000);
  await sleep(5000);

  await clickLink({ text: "Saved", mouseSpeed: 20 });
  await clickLink({ text: "Keypairs" });
  await sleep(5000);
}
