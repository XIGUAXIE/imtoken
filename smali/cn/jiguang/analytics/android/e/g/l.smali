.class public final Lcn/jiguang/analytics/android/e/g/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->d()[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    invoke-static {v5, p0}, Lcn/jiguang/analytics/android/e/g/l;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    if-eq v5, v6, :cond_3

    invoke-static {v4, p0}, Lcn/jiguang/analytics/android/e/g/l;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/h;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/jiguang/analytics/android/e/g/l;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
