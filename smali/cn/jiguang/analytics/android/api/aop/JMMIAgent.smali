.class public Lcn/jiguang/analytics/android/api/aop/JMMIAgent;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "JMMIAgent_xxx"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTabTabSpec(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecAnx(Landroidx/fragment/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecAnx:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecAnx(Landroidx/fragment/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTabHost;",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecAnx:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecAnxL(Landroidx/legacy/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecAnxL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecAnxL(Landroidx/legacy/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/legacy/app/FragmentTabHost;",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecAnxL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecV13(Landroidx/legacy/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecV13:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecV13(Landroidx/legacy/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/legacy/app/FragmentTabHost;",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecV13:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecV4(Landroidx/fragment/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecV4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static addTabTabSpecV4(Landroidx/fragment/app/FragmentTabHost;Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTabHost;",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTabTabSpecV4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->setAddTabOnclick(Landroid/widget/TabHost;)V

    return-void
.end method

.method public static clickOn(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V

    return-void
.end method

.method public static fragmentOnHiddenChanged(Ljava/lang/Object;Z)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "JMMIAgent_xxx"

    const-string p1, "fragmentOnHiddenChanged fragment is null"

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    instance-of v1, p0, Landroid/app/Fragment;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static fragmentSetUserVisibleHint(Ljava/lang/Object;Z)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "JMMIAgent_xxx"

    const-string p1, "fragmentSetUserVisibleHint fragment is null"

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    instance-of v2, p0, Landroid/app/Fragment;

    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static handleClickResult(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleClickResult returnValueObject:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JMMIAgent_xxx"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JMMIAgent_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static onCheckedChanged(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onCheckedChanged(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static onCheckedChanged(Ljava/lang/Object;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onCheckedChanged(Ljava/lang/Object;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static onChildClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IIJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onChildClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IIJ)V

    return-void
.end method

.method public static onClick(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onClick(Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static onClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onClick(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static onCreateOptionsMenu(Ljava/lang/Object;ZLandroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->onCreateOptionsMenu(Ljava/lang/Object;ZLandroid/view/Menu;)V

    return-void
.end method

.method public static onCreateView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static onDismissDialog(Ljava/lang/Object;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->onDismissDialog(Ljava/lang/Object;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static onGroupClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onGroupClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static onItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static onItemSelected(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onItemSelected(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static onLocationChanged(Ljava/lang/Object;Landroid/location/Location;)V
    .locals 3

    const-string v0, "JMMIAgent_xxx"

    if-nez p0, :cond_0

    const-string/jumbo p0, "onLocationChanged object is null"

    :goto_0
    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "onLocationChanged location is null"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLocationChanged object name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",location :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static onMenuItemClick(Ljava/lang/Object;ZLandroid/view/MenuItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onMenuItemClick(Ljava/lang/Object;ZLandroid/view/MenuItem;)V

    return-void
.end method

.method public static onOldViewHide(Lcn/jiguang/analytics/android/c/a;)V
    .locals 3

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/jiguang/analytics/android/f/l;->c(Lcn/jiguang/analytics/android/c/a;J)V

    return-void
.end method

.method public static onOldViewShow(Lcn/jiguang/analytics/android/c/a;)V
    .locals 3

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/jiguang/analytics/android/f/l;->b(Lcn/jiguang/analytics/android/c/a;J)V

    return-void
.end method

.method public static onOptionsItemSelected(Ljava/lang/Object;ZLandroid/view/MenuItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onOptionsItemSelected(Ljava/lang/Object;ZLandroid/view/MenuItem;)V

    return-void
.end method

.method public static onPause(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "JMMIAgent_xxx"

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo p0, "onPause object is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause object name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    instance-of v1, p0, Landroid/app/Fragment;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    move-object v1, p0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, p0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static onPrepareOptionsMenu(Ljava/lang/Object;ZLandroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->onPrepareOptionsMenu(Ljava/lang/Object;ZLandroid/view/Menu;)V

    return-void
.end method

.method public static onProgressChanged(Ljava/lang/Object;Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onProgressChanged(Ljava/lang/Object;Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public static onRatingChanged(Ljava/lang/Object;Landroid/widget/RatingBar;FZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onRatingChanged(Ljava/lang/Object;Landroid/widget/RatingBar;FZ)V

    return-void
.end method

.method public static onResume(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "JMMIAgent_xxx"

    if-nez p0, :cond_0

    const-string/jumbo p0, "onResume object is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResume object name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    instance-of v0, p0, Landroid/app/Fragment;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/m;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_1
    return-void
.end method

.method public static onViewHide(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/view/View;JZ)V

    return-void
.end method

.method public static onViewShow(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/view/View;JZ)V

    return-void
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 0

    return-object p0
.end method

.method public static performClickTabLayoutTabView(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->performClickTabLayoutTabView(Landroid/view/View;)V

    return-void
.end method

.method private static setAddTabOnclick(Landroid/widget/TabHost;)V
    .locals 6

    const-string v0, "JMMIAgent_xxx"

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "childAt:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Landroid/view/View;

    const-string v4, "getListenerInfo"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcn/jiguang/analytics/android/e/h;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getListenerInfo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mOnClickListener"

    invoke-static {v3, v4, v5}, Lcn/jiguang/analytics/android/e/h;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnClickListener;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mOnClickListener:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcn/jiguang/analytics/android/api/aop/a;

    if-nez v4, :cond_1

    new-instance v4, Lcn/jiguang/analytics/android/api/aop/a;

    invoke-direct {v4, v3}, Lcn/jiguang/analytics/android/api/aop/a;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setWebChromeClient(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 3

    const-string v0, "JMMIAgent_xxx"

    if-nez p0, :cond_0

    const-string/jumbo p0, "setWebChromeClient webView is null"

    :goto_0
    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "setWebChromeClient webChromeClient is null"

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWebChromeClient webview name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",webChromeClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const v0, -0xffeffc

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    const p1, -0xffeffb

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcn/jiguang/analytics/android/e/g/d;

    invoke-direct {v0, p0}, Lcn/jiguang/analytics/android/e/g/d;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static showAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialog(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static showAlertDialogAnx(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialogAnx(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static showAlertDialogBuilder(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialogBuilder(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showAlertDialogBuilderAnx(Landroidx/appcompat/app/AlertDialog$Builder;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialogBuilderAnx(Landroidx/appcompat/app/AlertDialog$Builder;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showAlertDialogBuilderV7(Landroidx/appcompat/app/AlertDialog$Builder;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialogBuilderV7(Landroidx/appcompat/app/AlertDialog$Builder;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showAlertDialogv7(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAlertDialogv7(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static showAtLocation(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showAtLocation(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static showDialog(Landroid/app/Dialog;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static showDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showDialogFragmentAnx(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragmentAnx(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static showDialogFragmentAnx(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragmentAnx(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showDialogFragmentV4(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragmentV4(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static showDialogFragmentV4(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showDialogFragmentV4(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showPopupMenu(Landroid/widget/PopupMenu;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showPopupMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method

.method public static showPopupMenuAnx(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showPopupMenuAnx(Landroidx/appcompat/widget/PopupMenu;)V

    return-void
.end method

.method public static showPopupMenuV7(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showPopupMenuV7(Landroidx/appcompat/widget/PopupMenu;)V

    return-void
.end method

.method public static showToast(Landroid/widget/Toast;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIDlgPupW;->showToast(Landroid/widget/Toast;)V

    return-void
.end method
