.class public Lcn/jiguang/analytics/android/api/aop/JPrefFrag;
.super Landroid/preference/PreferenceFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "JPrefFrag"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "JPrefFrag"

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->e()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onHiddenChanged(Z)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/e/a;->b(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->f()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setUserVisibleHint(Z)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/e/a;->a(Ljava/lang/Object;Z)V

    return-void
.end method
