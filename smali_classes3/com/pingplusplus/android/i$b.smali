.class public final Lcom/pingplusplus/android/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/pingplusplus/android/d;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/i;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    const-string p1, "method"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pingplusplus/android/i$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingplusplus/android/i$b;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/pingplusplus/android/i$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/pingplusplus/android/i$b;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/pingplusplus/android/i$b;->e:Lcom/pingplusplus/android/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pingplusplus/android/i$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/pingplusplus/android/d;
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/i$b;->e:Lcom/pingplusplus/android/d;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/i$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/i$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/i$b;->a:Ljava/lang/String;

    return-object v0
.end method
