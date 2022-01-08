.class public final Lcn/jiguang/analytics/android/e/d/g;
.super Lcn/jiguang/analytics/android/e/d/d;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/e/d/d;-><init>(Ljava/lang/String;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcn/jiguang/analytics/android/e/d/g;->a:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcn/jiguang/analytics/android/e/d/g;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "should be in ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/android/e/d/d;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcn/jiguang/analytics/android/e/d/g;->b:I

    const/4 p1, 0x2

    iput p1, p0, Lcn/jiguang/analytics/android/e/d/g;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)Z
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcn/jiguang/analytics/android/e/d/g;->b:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcn/jiguang/analytics/android/e/d/g;->a:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
