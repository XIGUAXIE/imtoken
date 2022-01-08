.class public final Lcn/jiguang/analytics/android/e/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcn/jiguang/analytics/android/c/a;


# direct methods
.method public static a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->b()[Landroid/view/View;

    move-result-object v0

    const-string v1, "UiTraverse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "traverseDialogWindow:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(J)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->b()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcn/jiguang/analytics/android/e/j;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/e/j;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcn/jiguang/analytics/android/e/l;->a(Ljava/lang/Runnable;J)V

    :cond_0
    new-instance p0, Lcn/jiguang/analytics/android/e/k;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/e/k;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1}, Lcn/jiguang/analytics/android/e/l;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 0

    const-wide/16 p1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/e/l;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->c()[Landroid/view/View;

    move-result-object v0

    const-string v1, "UiTraverse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "traversePopupWindow:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object v3

    sput-object v3, Lcn/jiguang/analytics/android/e/i;->a:Lcn/jiguang/analytics/android/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
