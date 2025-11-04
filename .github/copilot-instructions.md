# AI Agent Instructions for YoctoProject

This is a custom Yocto Project workspace targeting Raspberry Pi 3 development. The project uses the kas tool for build configuration management and includes custom layers for application-specific functionality.

## Project Structure

- `kas/` - Build configuration using kas tool
  - `kas-core-image-minimal-rpi3.yml` - Main build configuration for RPi3
  - `include/` - Modular kas configuration includes
- `layers/` - Core Yocto layers (bitbake, meta-raspberrypi, openembedded-core)
- `meta-omar*/` - Custom layers:
  - `meta-omar` - Application-specific recipes
  - `meta-omar-bsp` - Board support package customizations
  - `meta-omar-distro` - Distribution configuration
- `build/` - Generated build directory (not committed)
- `docker/` - Docker-based build environment

## Key Workflows

### Build Configuration

- The project uses kas for reproducible builds instead of direct bitbake
- Primary build target: `core-image-minimal` for Raspberry Pi 3
- Build command: `kas build kas/kas-core-image-minimal-rpi3.yml`

### Layer Management

- Custom layer versions tracked in kas include files
- Layer compatibility set to "scarthgap" Yocto release
- Layer dependencies and priorities defined in `meta-*/conf/layer.conf`

## Project Conventions

### Layer Organization
- BSP customizations go in `meta-omar-bsp`
- Distribution config in `meta-omar-distro`
- Application recipes in `meta-omar`

### Version Control
- Build artifacts in `build/` are not tracked
- kas configuration files track exact revisions of upstream layers

## Common Tasks

### Adding New Recipes
1. Place in appropriate meta-omar sublayer based on functionality
2. Follow Yocto recipe naming: `recipes-category/recipe-name/recipe-name_version.bb`
3. Update layer dependencies if introducing new layer requirements

### Modifying Build Configuration
1. Edit relevant kas include file in `kas/include/`
2. Regenerate build by removing `build/` and running kas build

### Development Environment
- Use provided Docker environment via `docker/docker.sh`
- Python virtual environment in `yocto-venv/` for kas and development tools

## Integration Points

- Raspberry Pi BSP integration via meta-raspberrypi layer
- Custom BSP modifications in meta-omar-bsp layer
- Distribution policy defined in meta-omar-distro layer