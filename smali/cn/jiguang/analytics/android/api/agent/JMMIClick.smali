.class public Lcn/jiguang/analytics/android/api/agent/JMMIClick;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "JMMIAgent_Click"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickOn(Landroid/view/View;)V
    .locals 4

    const-string v0, "JMMIAgent_Click"

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "onClick view is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/view/View;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clickOn e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onCheckedChanged(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "JMMIAgent_Click"

    :try_start_0
    instance-of p0, p0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckedChanged btn="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isChecked="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "onCheckedChanged CompoundButton e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onCheckedChanged(Ljava/lang/Object;Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string v0, "JMMIAgent_Click"

    :try_start_0
    instance-of p0, p0, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckedChanged, radioGroup="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " checkedId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "onCheckedChanged RadioGroup e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onChildClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IIJ)V
    .locals 1

    const-string p1, "JMMIAgent_Click"

    :try_start_0
    instance-of p2, p0, Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onChildClick:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",groupPosition:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",childPosition:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",id:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p2, "onChildClick e:"

    invoke-static {p1, p2, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onClick(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "JMMIAgent_Click"

    :try_start_0
    instance-of p0, p0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const-string/jumbo p0, "onDialogClick view is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDialogClick view:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/app/AlertDialog;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "onClick Dialog e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    const-string v0, "JMMIAgent_Click"

    :try_start_0
    instance-of p0, p0, Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "onClick view:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "onClick e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onGroupClick(Ljava/lang/Object;ZLandroid/widget/ExpandableListView;Landroid/view/View;IJ)V
    .locals 1

    const-string p1, "JMMIAgent_Click"

    :try_start_0
    instance-of p2, p0, Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onGroupClick:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",groupPosition:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",id:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string/jumbo p2, "onGroupClick e:"

    invoke-static {p1, p2, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const-string v0, "JMMIAgent_Click"

    const v1, -0xffdffa

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p0, Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v1, :cond_1

    instance-of p0, p0, Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p0, :cond_4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onItemClick:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",view:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",position:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",id:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/widget/Spinner;

    if-eqz p0, :cond_3

    const p0, -0xffdff9

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "onItemClick:Spinner:oldSelectedView:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    instance-of p4, p3, Landroid/view/View;

    if-eqz p4, :cond_2

    check-cast p3, Landroid/view/View;

    const p4, -0xffdffd

    invoke-virtual {p3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "onItemClick:Spinner:oldSelectedView:TrackScrollListener:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_2

    :try_start_1
    const-string/jumbo p4, "onItemClick:Spinner onScrollChanged"

    invoke-static {v0, p4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Lcn/jiguang/analytics/android/f/o;

    invoke-virtual {p3}, Lcn/jiguang/analytics/android/f/o;->onScrollChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    :try_start_2
    const-string/jumbo p4, "onItemClick:Spinner e: "

    invoke-static {v0, p4, p3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    const-string/jumbo p1, "onItemClick e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static onItemSelected(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const-string v0, "JMMIAgent_Click"

    :try_start_0
    instance-of v1, p0, Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onItemSelected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p5}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->onItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string/jumbo p1, "onItemSelected e:"

    invoke-static {v0, p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onMenuItemClick(Ljava/lang/Object;ZLandroid/view/MenuItem;)V
    .locals 2

    const-string p1, "JMMIAgent_Click"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onMenuItemClick:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",item:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/analytics/android/e/g/l;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string/jumbo p2, "onMenuItemClick e:"

    invoke-static {p1, p2, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onOptionsItemSelected(Ljava/lang/Object;ZLandroid/view/MenuItem;)V
    .locals 2

    const-string p1, "JMMIAgent_Click"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onOptionsItemSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcn/jiguang/analytics/android/e/g/l;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string/jumbo p2, "onOptionsItemSelected e:"

    invoke-static {p1, p2, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onProgressChanged(Ljava/lang/Object;Landroid/widget/SeekBar;IZ)V
    .locals 2

    const-string p0, "JMMIAgent_Click"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onProgressChanged, seekBar="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fromUser="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string/jumbo p2, "onProgressChanged e:"

    invoke-static {p0, p2, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onRatingChanged(Ljava/lang/Object;Landroid/widget/RatingBar;FZ)V
    .locals 2

    const-string p0, "JMMIAgent_Click"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRatingChanged, ratingBar="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " fromUser="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string/jumbo p2, "onRatingChanged e:"

    invoke-static {p0, p2, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static performClickTabLayoutTabView(Landroid/view/View;)V
    .locals 3

    const-string v0, "JMMIAgent_Click"

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo p0, "performClickTabLayoutTabView view is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "performClickTabLayoutTabView view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/agent/JMMIClick;->clickOn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "performClickTabLayoutTabView e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
