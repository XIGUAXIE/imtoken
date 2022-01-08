.class public final Lcn/jiguang/analytics/android/e/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/e/c/b;->a:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcn/jiguang/analytics/android/e/c/b;->b:I

    iput p1, p0, Lcn/jiguang/analytics/android/e/c/b;->c:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/e/c/b;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    const/16 p1, 0x3a98

    iput p1, p0, Lcn/jiguang/analytics/android/e/c/b;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/c/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/e/c/b;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/e/c/b;->c:I

    return v0
.end method

.method public final d()Ljava/util/Map;
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

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/c/b;->d:Ljava/util/Map;

    return-object v0
.end method
