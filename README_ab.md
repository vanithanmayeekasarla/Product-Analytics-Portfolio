#  A/B Testing Project – CTA Button Optimization for Food Delivery App

##  Objective
The goal of this A/B test was to determine whether changing the homepage CTA (Call to Action) button text would increase order conversions on a food delivery platform.

---

## Hypothesis
> Changing the CTA from **“Order Now”** to **“Get 20% Off – Order Now”** will lead to a higher conversion rate.

---

## Experiment Design

- **Group A (Control):** Saw original CTA → “Order Now”
- **Group B (Variant):** Saw new CTA → “Get 20% Off – Order Now”
- **Sample Size:** 1000 users in each group
- **Metric Tracked:** Conversion rate (placed an order or not)

---

##  Results

| Group | Users | Conversions | Conversion Rate |
|-------|-------|-------------|------------------|
| A     | 1000  | 100         | 10.0%            |
| B     | 1000  | 118         | 11.8%            |

- **Lift:** +18%
- **P-value:** 0.197

---

## Conclusion

Although Group B showed an **18% higher conversion rate**, the result was **not statistically significant** (p-value > 0.05).  
This means the improvement **could have occurred by chance**, so we **cannot confidently recommend** rolling out the new CTA based on this test alone.

**Next Steps:**
- Run the test with a **larger sample size**
- Extend the test duration
- Explore additional variations like color or placement

---

## 🛠 Tools Used
- Python (Pandas, SciPy)
- Google Colab (Jupyter Notebook)
- A simulated dataset for demonstration purposes
