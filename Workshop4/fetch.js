async function fetchUserData(userId) {
  try {
    const response = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}`);
    if (!response.ok) {
      throw new Error(`Failed to fetch user data: ${response.status} ${response.statusText}`);
    }
    const userData = await response.json();
    return { name: userData.name, email: userData.email };
  } catch (error) {
    throw new Error(`Failed to fetch user data: ${error.message}`);
  }
}
(async () => {
  try {
    const userData = await fetchUserData(1);
    document.getElementsByClassName('username').innertext = (`User name: ${userData.name}`);
    document.getElementsByClassName('email').innertext = (`User email: ${userData.email}`);
  } catch (error) {
    console.error(error);
  }
})();