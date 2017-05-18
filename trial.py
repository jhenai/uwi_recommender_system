import pandas as pd
import numpy as np

# movies= pd.read_csv("movies.csv")
ratings= pd.read_csv("ratings.csv")

# ratings.drop(['timestamp'], axis=1, inplace= True)

# print movies.head()

# def replace_name(x):
#     return movies[movies['movieId']==x].course.values[0]

# ratings.movieId = ratings.movieId.map(replace_name)

# print ratings.head()

M = ratings.pivot_table(index=['student'], columns=['coursecode'],values='rating')

print M.shape

print M

def pearson(s1,s2):
    s1_c = s1 - s1.mean()
    s2_c = s2 - s2.mean()
    return np.sum(s1_c * s2_c) / np.sqrt(np.sum(s1_c**2) * np.sum(s2_c ** 2))

# print pearson(M['Mission: Impossible II (2000)'], M['Erin Brockovich (2000)'])

def get_recs(coursecode, M):
    import numpy as np
    
    recommendations =[]
    for course in M.columns:
        if course == coursecode:
            continue
        cor = pearson(M[coursecode], M[course])
        if np.isnan(cor):
            continue
        else:
            recommendations.append((course,cor))
    recommendations.sort(key=lambda tup: tup[1], reverse=True)
    return recommendations
            
# recs = get_recs('Clerks (1994)', M, 10)

# print recs[:10]
            
    

# import pandas as pd
# import numpy as np

# movies= pd.read_csv("movies.csv")
# ratings= pd.read_csv("ratings.csv")

# ratings.drop(['timestamp'], axis=1, inplace= True)

# # print movies.head()

# def replace_name(x):
#     return movies[movies['movieId']==x].course.values[0]

# ratings.movieId = ratings.movieId.map(replace_name)

# # print ratings.head()

# M = ratings.pivot_table(index=['userId'], columns=['movieId'],values='rating')

# print M.shape

# print M

# def pearson(s1,s2):
#     s1_c = s1 - s1.mean()
#     s2_c = s2 - s2.mean()
#     return np.sum(s1_c * s2_c) / np.sqrt(np.sum(s1_c**2) * np.sum(s2_c ** 2))

# print pearson(M['Mission: Impossible II (2000)'], M['Erin Brockovich (2000)'])

# def get_recs(coursecode, M, num):
#     import numpy as np
    
#     recommendations =[]
#     for course in M.columns:
#         if course == coursecode:
#             continue
#         cor = pearson(M[coursecode], M[course])
#         if np.isnan(cor):
#             continue
#         else:
#             recommendations.append((course,cor))
#     recommendations.sort(key=lambda tup: tup[1], reverse=True)
#     return recommendations[:num]
            
# recs = get_recs('Clerks (1994)', M, 10)

# print recs[:10]
            
    