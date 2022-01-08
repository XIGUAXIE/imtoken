.class public abstract Lcom/helpscout/beacon/internal/presentation/common/c;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/mvi/legacy/i;
.implements Lcom/helpscout/beacon/a/d/a/a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/c$g;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/c$g;-><init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/c$f;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/c$f;-><init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->b:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/helpscout/beacon/internal/presentation/common/c$a;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->c:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/c$b;

    invoke-direct {v1, p0, v2, v2}, Lcom/helpscout/beacon/internal/presentation/common/c$b;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->d:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/c$c;

    invoke-direct {v1, p0, v2, v2}, Lcom/helpscout/beacon/internal/presentation/common/c$c;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/h;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->f:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-void
.end method

.method private final q()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c;->a:Lcom/helpscout/beacon/a/d/a/c$a;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/helpscout/beacon/a/d/a/c$a;->a(Lcom/helpscout/beacon/a/d/a/c$a;Landroid/content/Context;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method private final r()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->b()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/c$d;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/common/c$d;-><init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/lifecycle/EventObserver;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/c$e;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/common/c$e;-><init>(Lcom/helpscout/beacon/internal/presentation/common/c;)V

    invoke-direct {v1, v2}, Lcom/helpscout/common/lifecycle/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final t()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_back:I

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private final u()V
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->c()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->d()V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/i$a;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/i;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/i$a;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/i;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->u()V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->u()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected final i()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method protected final j()Lcom/helpscout/beacon/internal/presentation/common/o/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/o/a;

    return-object v0
.end method

.method public final k()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected final l()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method public final m()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c;->f:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-object v0
.end method

.method public o()Z
    .locals 3

    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Parent Activity Intent defined for this activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x7d1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->q()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->r()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/i;->a(Landroid/view/Menu;I)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->o()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget v1, Lcom/helpscout/beacon/ui/R$id;->menu_close:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->j()Lcom/helpscout/beacon/internal/presentation/common/o/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/o/a;->a(Lcom/helpscout/beacon/internal/presentation/common/c;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    return v0
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
