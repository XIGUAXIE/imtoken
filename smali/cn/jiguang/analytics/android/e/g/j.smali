.class public final Lcn/jiguang/analytics/android/e/g/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/analytics/android/e/g/k;

.field private static b:Lcn/jiguang/analytics/android/e/g/k;

.field private static c:Lcn/jiguang/analytics/android/e/g/k;


# direct methods
.method public static a(J)Z
    .locals 7

    sget-object v0, Lcn/jiguang/analytics/android/e/g/j;->a:Lcn/jiguang/analytics/android/e/g/k;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/e/g/k;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/e/g/k;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/e/g/j;->a:Lcn/jiguang/analytics/android/e/g/k;

    :cond_0
    sget-object v1, Lcn/jiguang/analytics/android/e/g/j;->a:Lcn/jiguang/analytics/android/e/g/k;

    const-wide/16 v4, 0x2710

    const/16 v6, 0x1e

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcn/jiguang/analytics/android/e/g/k;->a(JJI)Z

    move-result p0

    return p0
.end method

.method public static b(J)Z
    .locals 7

    sget-object v0, Lcn/jiguang/analytics/android/e/g/j;->b:Lcn/jiguang/analytics/android/e/g/k;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/e/g/k;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/e/g/k;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/e/g/j;->b:Lcn/jiguang/analytics/android/e/g/k;

    :cond_0
    sget-object v1, Lcn/jiguang/analytics/android/e/g/j;->b:Lcn/jiguang/analytics/android/e/g/k;

    const-wide/16 v4, 0x2710

    const/16 v6, 0x1e

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcn/jiguang/analytics/android/e/g/k;->a(JJI)Z

    move-result p0

    return p0
.end method

.method public static c(J)Z
    .locals 7

    sget-object v0, Lcn/jiguang/analytics/android/e/g/j;->c:Lcn/jiguang/analytics/android/e/g/k;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/e/g/k;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/e/g/k;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/e/g/j;->c:Lcn/jiguang/analytics/android/e/g/k;

    :cond_0
    sget-object v1, Lcn/jiguang/analytics/android/e/g/j;->c:Lcn/jiguang/analytics/android/e/g/k;

    const-wide/16 v4, 0x2710

    const/16 v6, 0x1e

    move-wide v2, p0

    invoke-virtual/range {v1 .. v6}, Lcn/jiguang/analytics/android/e/g/k;->a(JJI)Z

    move-result p0

    return p0
.end method

.method public static d(J)V
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/e/g/j;->b:Lcn/jiguang/analytics/android/e/g/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/e/g/k;->a(J)Z

    :cond_0
    return-void
.end method
