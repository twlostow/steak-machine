#ifndef __PID_CONTROLLER_H
#define __PID_CONTROLLER_H

class PIDController
{
  public:
    PIDController(float p, float i, float d, float dt) : m_p(p), m_i(i), m_d(d), m_dt(dt)
    {
        first = true;
        last = 0.0;
        integral = 0.0;
    }

    float update(float sensor, float goal)
    {
        float error = goal - sensor;
        float derivative;

        integral = (0.9 * integral) + error;
        if (first)
            derivative = 0.0;
        else
            derivative = (sensor - last) / m_dt;

        last = sensor;
        first = false;

        float drive = m_p * error + (m_i * integral) + (m_d * derivative);

        if (drive > 1.0)
            drive = 1.0;
        else if (drive < 0.0)
            drive = 0.0;

        return drive;
    }

  private:
    float last, m_p, m_i, m_d, integral, m_dt;
    bool first;
};

#endif