.class public final Lcn/jiguang/analytics/android/e/d/e;
.super Lcn/jiguang/analytics/android/e/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "should be date as yyyyMMdd"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/e/d/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)Z
    .locals 3

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/b;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v1
.end method
