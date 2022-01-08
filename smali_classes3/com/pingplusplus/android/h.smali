.class public final Lcom/pingplusplus/android/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/pingplusplus/android/d;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    const-string p3, "responseBody"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pingplusplus/android/h;->a:I

    iput-object p2, p0, Lcom/pingplusplus/android/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pingplusplus/android/h;->c:Lcom/pingplusplus/android/d;

    return-void
.end method
