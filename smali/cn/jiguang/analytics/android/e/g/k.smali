.class final Lcn/jiguang/analytics/android/e/g/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(JJI)Z
    .locals 4

    iget-object p3, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    const/4 p4, 0x0

    const/16 p5, 0x1e

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p5, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1e

    invoke-interface {v0, v1, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :cond_0
    if-ne p3, p5, :cond_1

    iget-object p3, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long p3, p1, v0

    if-gez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_3

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p5, :cond_3

    iget-object p1, p0, Lcn/jiguang/analytics/android/e/g/k;->a:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    return p3
.end method
