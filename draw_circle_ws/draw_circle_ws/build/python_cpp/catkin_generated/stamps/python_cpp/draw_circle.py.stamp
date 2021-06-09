import numpy as np

class Shape_Drawer:
    CIRCLE_RADIUS_U = 20.0
    ANGLE_INCREMENT_DEG = 1.5

    STEPPER_COURSE_MM = 80.0
    CONVERSION_U_2_MM = STEPPER_COURSE_MM / (CIRCLE_RADIUS_U * 2)
    CONVERSION_MM_2_IT= 416

    def __init__(self):
        # Private Members
        self._radius = self.CIRCLE_RADIUS_U
        self._angle_increment_DEG = self.ANGLE_INCREMENT_DEG
        self._angle_increment_RAD = self._angle_increment_DEG * np.pi / 180

        # Message Variables
        self.iterations = list()
        self._coordinates = list()
        self._counter = 0

        # Generate Shape
        self._generate_coordinates()
        self._transform_2_iterations()

    def get_next_step(self):
        it = self.iterations[self._counter]
        self._counter += 1
        if self._counter == len(self.iterations):
            self._counter = 0
        return it

    def _generate_coordinates(self):
        for theta in np.arange(0.0, 2 * np.pi + self._angle_increment_RAD, self._angle_increment_RAD):
            x = self._radius * np.cos(theta)
            y = self._radius * np.sin(theta)
            self._coordinates.append([x,y])

    def _transform_2_iterations(self):
        pt_last = self._coordinates[0][1]
        for idx in range(len(self._coordinates)):
            step_y_U = self._coordinates[idx][1] - pt_last
            step_y_MM = step_y_U * self.CONVERSION_U_2_MM
            self.iterations.append(int(round(step_y_MM * self.CONVERSION_MM_2_IT)))

            pt_last = self._coordinates[idx][1]

def main():
    # Geometry Info
    radius = CIRCLE_RADIUS_U

    # Step Info
    angle_increment_DEG = ANGLE_INCREMENT_DEG
    angle_increment_RAD = angle_increment_DEG * np.pi / 180

    # Calculate Points
    pts = list()
    for theta in np.arange(0.0, 2 * np.pi + angle_increment_RAD, angle_increment_RAD):
        x = radius * np.cos(theta)
        y = radius * np.sin(theta)
        pts.append([x,y])

    # Transform to Steps
    pt_last = pts[0][1]
    for idx in range(len(pts)):
        step_y_U = pts[idx][1] - pt_last
        step_y_MM = step_y_U * CONVERSION_U_2_MM
        step_y_IT = int(round(step_y_MM * CONVERSION_MM_2_IT))

        pt_last = pts[idx][1]           

if __name__ == "__main__":
    main()