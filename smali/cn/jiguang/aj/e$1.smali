.class final Lcn/jiguang/aj/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/aj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/jiguang/aj/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/jiguang/aj/d;Lcn/jiguang/aj/d;)I
    .locals 11

    invoke-virtual {p1, p2}, Lcn/jiguang/aj/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcn/jiguang/aj/d;->b:I

    iget v2, p2, Lcn/jiguang/aj/d;->b:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    return v3

    :cond_1
    iget v0, p1, Lcn/jiguang/aj/d;->b:I

    iget v2, p2, Lcn/jiguang/aj/d;->b:I

    const/4 v4, 0x1

    if-ge v0, v2, :cond_2

    return v4

    :cond_2
    iget v0, p1, Lcn/jiguang/aj/d;->e:I

    iget v2, p2, Lcn/jiguang/aj/d;->e:I

    if-le v0, v2, :cond_3

    return v3

    :cond_3
    iget v0, p1, Lcn/jiguang/aj/d;->e:I

    iget v2, p2, Lcn/jiguang/aj/d;->e:I

    if-ge v0, v2, :cond_4

    return v4

    :cond_4
    iget-wide v5, p1, Lcn/jiguang/aj/d;->d:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    iget-wide v5, p2, Lcn/jiguang/aj/d;->d:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    iget-wide v5, p1, Lcn/jiguang/aj/d;->d:J

    iget-wide v9, p2, Lcn/jiguang/aj/d;->d:J

    cmp-long v0, v5, v9

    if-gez v0, :cond_5

    return v3

    :cond_5
    iget-wide v5, p1, Lcn/jiguang/aj/d;->d:J

    iget-wide v9, p2, Lcn/jiguang/aj/d;->d:J

    cmp-long v0, v5, v9

    if-lez v0, :cond_6

    return v4

    :cond_6
    iget-wide v5, p1, Lcn/jiguang/aj/d;->c:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_8

    iget-wide v5, p2, Lcn/jiguang/aj/d;->c:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_8

    iget-wide v5, p1, Lcn/jiguang/aj/d;->c:J

    iget-wide v7, p2, Lcn/jiguang/aj/d;->c:J

    const-wide/32 v9, 0x2bf20

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    return v3

    :cond_7
    iget-wide v2, p1, Lcn/jiguang/aj/d;->c:J

    iget-wide p1, p2, Lcn/jiguang/aj/d;->c:J

    sub-long/2addr p1, v9

    cmp-long v0, v2, p1

    if-gez v0, :cond_8

    return v4

    :cond_8
    return v1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/jiguang/aj/d;

    check-cast p2, Lcn/jiguang/aj/d;

    invoke-virtual {p0, p1, p2}, Lcn/jiguang/aj/e$1;->a(Lcn/jiguang/aj/d;Lcn/jiguang/aj/d;)I

    move-result p1

    return p1
.end method
