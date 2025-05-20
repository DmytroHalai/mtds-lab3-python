import numpy as np
from fastapi import APIRouter

router = APIRouter()


@router.get('')
def hello_world() -> dict:
    return {'msg': 'Hello, World!'}


@router.get("/multiply-matrices")
def multiply_matrices():
    a = np.random.randint(0, 10, size=(10, 10))
    b = np.random.randint(0, 10, size=(10, 10))
    result = np.matmul(a, b)

    return {
        "matrix_a": a.tolist(),
        "matrix_b": b.tolist(),
        "product": result.tolist()
    }