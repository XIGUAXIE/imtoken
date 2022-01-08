.class public final Lcn/jiguang/analytics/android/e/g;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)I
    .locals 5

    const v0, -0xffdfff

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq p0, v4, :cond_2

    invoke-static {v4, v1}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return p1
.end method

.method public static a(Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Dialog;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Fragment;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/view/View;Z)Ljava/lang/String;
    .locals 3

    const v0, -0xffe000

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public static a(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 4

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    sget-object v1, Lcn/jiguang/analytics/android/e/i;->a:Lcn/jiguang/analytics/android/c/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;J)V

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/view/View;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/m;->a(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/m;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcn/jiguang/analytics/android/e/g;->a(Ljava/util/List;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    const/4 v4, 0x2

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    instance-of v5, v3, Landroid/widget/ExpandableListView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v5, :cond_2

    :try_start_2
    check-cast v3, Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/ExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "-1_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v6, v3

    sub-int v3, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-2_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v4, v0

    move-object v3, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_2
    :try_start_3
    instance-of v5, v3, Landroid/widget/AdapterView;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v5, :cond_3

    :try_start_4
    check-cast v3, Landroid/widget/AdapterView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    const/4 v10, 0x1

    goto :goto_5

    :cond_3
    :try_start_5
    instance-of v5, v3, Landroid/widget/TabWidget;

    if-eqz v5, :cond_4

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->h(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Landroid/view/View;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_2
    :try_start_6
    invoke-static {p0, v3, v9}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v10, v5

    move v5, v3

    goto :goto_5

    :catchall_1
    move-object v4, v0

    move v7, v5

    move-object v3, v9

    goto/16 :goto_7

    :cond_8
    :goto_3
    :try_start_7
    invoke-static {p0, v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v3

    if-ltz v3, :cond_9

    move v5, v3

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    goto :goto_0

    :cond_a
    :goto_4
    invoke-static {v3, p0}, Lcn/jiguang/analytics/android/e/m;->a(Ljava/lang/Object;Landroid/view/View;)I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :cond_b
    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_5
    if-nez v0, :cond_c

    :try_start_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    const v3, -0xffdffe

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v5, v2, :cond_d

    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    :try_start_9
    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-ne p0, v4, :cond_e

    const/4 v1, 0x1

    :cond_e
    :try_start_a
    new-instance p0, Lcn/jiguang/analytics/android/f/p;

    move-object v3, p0

    move-object v4, v9

    move-object v5, v0

    move v6, v11

    move v7, v1

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcn/jiguang/analytics/android/f/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-object p0

    :catchall_2
    move-object v4, v0

    move v6, v1

    move-object v3, v9

    move v7, v10

    move v5, v11

    goto :goto_a

    :catchall_3
    move-object v4, v0

    move-object v3, v9

    move v7, v10

    move v5, v11

    goto :goto_8

    :catchall_4
    move-object v4, v0

    move-object v3, v9

    move v7, v10

    :goto_7
    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x0

    goto :goto_a

    :catchall_5
    move-object v4, v0

    move-object v3, v9

    goto :goto_9

    :catchall_6
    move-object v3, v0

    move-object v4, v3

    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    new-instance p0, Lcn/jiguang/analytics/android/f/p;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcn/jiguang/analytics/android/f/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;
    .locals 14

    const-string v0, "/"

    const/4 v1, 0x0

    const-string v2, "IdUtils"

    const-string v3, ""

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcn/jiguang/analytics/android/c/a;

    invoke-direct {p0, v3, v3, v1}, Lcn/jiguang/analytics/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto/16 :goto_3

    :cond_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/m;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v4

    const v5, -0xffdffb

    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v4}, Lcn/jiguang/analytics/android/e/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    invoke-static {v4}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/jiguang/analytics/android/e/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getViewTreePath view is rootView Parent !  "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcn/jiguang/analytics/android/c/a;

    invoke-direct {p0, v3, v3, v1}, Lcn/jiguang/analytics/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    invoke-static {v4, v5}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v6

    :cond_5
    move-object v7, v6

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/m;->c(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_6

    const/4 v6, 0x0

    invoke-interface {p0, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Lcn/jiguang/analytics/android/f/p;

    const-string v8, "0"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcn/jiguang/analytics/android/f/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcn/jiguang/analytics/android/f/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_2
    if-ltz v6, :cond_8

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcn/jiguang/analytics/android/f/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v7, Lcn/jiguang/analytics/android/f/p;->e:Z

    if-eqz v8, :cond_7

    iget-object v7, v7, Lcn/jiguang/analytics/android/f/p;->b:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_9

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_9
    new-instance p0, Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4, v1}, Lcn/jiguang/analytics/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getViewTreePath viewId:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    :goto_3
    const-string v0, "getViewTreePath Throwable:"

    invoke-static {v2, v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcn/jiguang/analytics/android/c/a;

    invoke-direct {p0, v3, v3, v1}, Lcn/jiguang/analytics/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    const-string v0, "IdUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
