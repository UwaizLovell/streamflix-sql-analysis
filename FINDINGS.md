# StreamFlix — Business Findings

## 1. Revenue

StreamFlix has 12 users, with four subscribers registered on each plan: Basic, Standard and Premium. However, the plans do not generate equal revenue because their monthly prices differ.

Q3 shows that StreamFlix earns R1,242 in total monthly revenue from active subscribers. Q19 breaks this amount down by plan:

- Premium: R796 per month from four active subscribers.
- Basic: R297 per month from three active subscribers.
- Standard: R149 per month from one active subscriber.

Premium is StreamFlix's strongest plan in terms of monthly revenue, contributing the largest share of active subscription income. Although each plan has four registered users, Premium generates considerably more revenue.

## 2. Churn

The churn results show a clear difference between the plans. Standard has the highest churn rate at 75%, followed by Basic at 25%. Premium has a churn rate of 0%.

The analysis also identified three users who have never watched anything. All three are cancelled subscribers, and two of them were on the Standard plan.

This suggests a possible relationship between low engagement and cancellations. However, it does not prove that users cancelled because they did not watch anything. They may have had other reasons for leaving.

To understand why subscribers cancel, StreamFlix would need additional information such as cancellation reason surveys, login and app activity, support tickets, content searches, sign-up sources and payment or billing issues.

## 3. Engagement

Drama is the strongest genre by total viewing time, with 654 minutes watched. Township Tales is the most-watched individual show, with five plays.

Premium users generated the highest number of views, with 14 views compared with six from Basic users and five from Standard users.

The three most-engaged users were Thabo Nkosi with 200 minutes watched, Naledi Khumalo with 195 minutes, and Zinhle Ndlovu with 190 minutes.

StreamFlix should continue promoting popular Drama content, particularly Township Tales, while maintaining engagement among its Premium subscribers.

## 4. Data Quality

The country column contained inconsistent values for South Africa: some records used 'South Africa' while others used 'south africa'.

This could cause reporting errors by treating the same country as two separate categories. Using LOWER() allowed both spellings to be grouped together.

The final country counts were South Africa with five users, Nigeria with four users, and Kenya with three users.

I would recommend that the data team standardise country names when users register, so that future reports do not contain duplicate country categories caused by inconsistent spelling or capitalisation.

## 5. Recommendation

StreamFlix should prioritise improving engagement and retention among Standard plan subscribers.

The Standard plan has a 75% churn rate, the highest of all three plans. Two of the three users who never watched anything were also Standard subscribers. StreamFlix could introduce an onboarding process that encourages new subscribers to watch content soon after signing up, and follow up with subscribers who have not started watching.

This recommendation focuses on the plan with the highest cancellation rate and addresses the possible relationship between low engagement and cancellations.

**Limitation:** This analysis is based on only 12 users, 10 shows and 25 viewing records. The dataset does not include cancellation reasons, login activity or detailed subscriber behaviour over time. Therefore, it cannot establish why users cancelled or prove that low engagement caused cancellations. A larger dataset with additional customer activity and feedback would be needed to investigate these patterns further.
