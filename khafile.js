let project = new Project("New Project");
project.addSources("src");
project.addAssets("assets/**", {
    nameBaseDir: "assets",
    destination: "assets/{dir}/{name}",
    name: "{name}",
});
process.defines = ["S2D_DEBUG_FPS", "S2D_UI_DEBUG_ELEMENT_BOUNDS"];
await project.addProject("sengine");
resolve(project);
