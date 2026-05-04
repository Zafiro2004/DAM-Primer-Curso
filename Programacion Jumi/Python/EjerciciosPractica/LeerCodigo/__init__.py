# ==============================================================================
# BLOQUE 1 — SEGUIR EL VALOR (traza de ejecución)
# ==============================================================================

# ── Ejercicio 1 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 1 ---")
def f(n):
    if n == 0:
        return 0
    return n + f(n - 1)
print(f(4))
print(f(1))
# Respuesta:
# f(4) → __
# f(1) → __

# ── Ejercicio 2 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 2 ---")
def f(n):
    if n == 0:
        return 1
    return n * f(n - 1)
print(f(5))
print(f(0))
# Respuesta:
# f(5) → __
# f(0) → __
# ── Ejercicio 3 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 3 ---")
def f(n):
    if n <= 0:
        return
    print(n)
    f(n - 2)
f(6)
# Respuesta:
# __
# __
# __
# ── Ejercicio 4 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 4 ---")
def f(n):
    if n <= 0:
        return
    f(n - 1)
    print(n)
f(4)
# Respuesta:
# __
# __
# __
# __

# ── Ejercicio 5 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 5 ---")
def f(n):
    if n == 0:
        print("base")
        return
    print("baixada", n)
    f(n - 1)
    print("pujada", n)
f(3)
# Respuesta:
# __
# __
# __
# __
# __
# __
# __
# ── Ejercicio 6 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 6 ---")
def f(n):
    if n == 0:
        return 0
    if n % 2 == 0:
        return f(n - 1) + 10
    else:
        return f(n - 1) + 1
print(f(5))
# Respuesta:
# f(5) → __
# ── Ejercicio 7 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 7 ---")
def f(n):
    if n == 0:
        return 0
    return f(n - 1) * 2 + 1
print(f(4))
# Respuesta:
# f(4) → __
# ── Ejercicio 8 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 8 ---")
def f(a, b):
    if b == 0:
        return a
    return f(b, a % b)
print(f(12, 8))
print(f(9, 6))
# Respuesta:
# f(12, 8) → __
# f(9, 6) → __
# ── Ejercicio 9 ──────────────────────────────────────────────────────────────
print("--- Ejercicio 9 ---")
def f(n):
    if n <= 1:
        return n
    return f(n - 1) + f(n - 2)
print(f(6))
print(f(3))
# Respuesta:
# f(6) → __
# f(3) → __
# ── Ejercicio 10 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 10 ---")
def f(v, p):
    if p == len(v):
        return 0
    return v[p] + f(v, p + 1)
llista = [3, 1, 4, 1, 5]
print(f(llista, 0))
print(f(llista, 2))
# Respuesta:
# f(llista, 0) → __
# f(llista, 2) → __
# ── Ejercicio 11 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 11 ---")
def f(v, p):
    if p < 0:
        return
    print(v[p])
    f(v, p - 1)
llista = [10, 20, 30]
f(llista, 2)
# Respuesta:
# __
# __
# __
# ── Ejercicio 12 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 12 ---")
def f(n, acc=0):
    if n == 0:
        return acc
    return f(n - 1, acc + n)
print(f(5))
print(f(3, 10))
# Respuesta:
# f(5) → __
# f(3, 10) → __
# ── Ejercicio 13 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 13 ---")
def f(n):
    if n == 0:
        return 0
    return 1 + f(n // 2)
print(f(8))
print(f(16))
# Respuesta:
# f(8) → __
# f(16) → __
# ── Ejercicio 14 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 14 ---")
def f(s):
    if len(s) == 0:
        return True
    if s[0] != s[-1]:
        return False
    return f(s[1:-1])
print(f("radar"))
print(f("python"))
print(f("a"))
# Respuesta:
# f("radar") → __
# f("python") → __
# f("a") → __
# ── Ejercicio 15 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 15 ---")
def f(v, n):
    if not v:
        return 0
    return (1 if v[0] == n else 0) + f(v[1:], n)
llista = [1, 3, 1, 2, 1]
print(f(llista, 1))
print(f(llista, 5))
# Respuesta:
# f(llista, 1) → __
# f(llista, 5) → __
# ── Ejercicio 16 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 16 ---")
x = 0
def f(n):
    global x
    if n == 0:
        return
    x += n
    f(n - 1)
f(4)
print(x)
f(2)
print(x)
# Respuesta:
# primera print → __
# segunda print → __
# ── Ejercicio 17 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 17 ---")
def f(n):
    if n <= 0:
        return 0
    return f(n - 3) + f(n - 1)
print(f(4))
# Respuesta:
# f(4) → __
# ── Ejercicio 18 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 18 ---")
def f(v, p=0):
    if p >= len(v):
        return
    if v[p] % 2 == 0:
        print(v[p])
    f(v, p + 1)
f([1, 2, 3, 4, 5, 6])
# Respuesta:
# __
# __
# __
# ── Ejercicio 19 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 19 ---")
def f(n, prof=0):
    if n == 0:
        print(" " * prof + "0")
        return
    print(" " * prof + str(n))
    f(n - 1, prof + 2)
    print(" " * prof + str(n))
f(3)
# Respuesta:
# __
# __
# __
# __
# __
# __
# __
# ── Ejercicio 20 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 20 ---")
def f(d, n):
    if n == 0:
        return d
    nou = {}
    for k in d:
        nou[k] = d[k] * 2
    return f(nou, n - 1)
resultat = f({"a": 1, "b": 2}, 3)
print(resultat)
# Respuesta:
# __
# ==============================================================================
# BLOQUE 2 — EJERCICIOS SIN FINALIDAD PRÁCTICA (traza pura, como los exámenes)
# ==============================================================================

# ── Ejercicio 21 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 21 ---")
def f(n, k):
    if n <= 0:
        return k
    return f(n - 1, k + n) + f(n - 2, k)
print(f(3, 0))
# Respuesta:
# __
# ── Ejercicio 22 ─────────────────────────────────────────────────────────────
print("--- Ejercicio 22 ---")
resultat = []
def f(n):
    if n == 0:
        return
    f(n - 1)
    resultat.append(n * 2)
f(4)
print(resultat)
print(len(resultat))
# Respuesta:
# resultat → __
# len → __
