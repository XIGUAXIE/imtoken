.class public final Lcn/jiguang/analytics/android/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static a:Ljava/lang/String; = "TrackScrollListener"


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcn/jiguang/analytics/android/c/a;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    const-string v1, "TrackScrollListener"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcn/jiguang/analytics/android/f/o;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateWhenStillLast oldIsTracked:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateWhenStillLast oldIsVisible:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateWhenStillLast show:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->onOldViewShow(Lcn/jiguang/analytics/android/c/a;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->onOldViewHide(Lcn/jiguang/analytics/android/c/a;)V

    :goto_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/view/View;Z)V

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/analytics/android/f/b;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcn/jiguang/analytics/android/f/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "re"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    iput-object p2, p0, Lcn/jiguang/analytics/android/f/o;->f:Ljava/util/List;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object p2

    iput-object p2, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {p2}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcn/jiguang/analytics/android/f/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p2

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "re view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "re oldViewId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "re oldIsTracked:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "re oldIsVisible:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "re show:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcn/jiguang/analytics/android/f/o;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onScrollChanged()V
    .locals 6

    const-string/jumbo v0, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8:"

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    const-string/jumbo v2, "onScrollChanged"

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object v1

    sget-object v2, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onScrollChanged view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onScrollChanged viewId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    iget-object v3, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v1, v3}, Lcn/jiguang/analytics/android/c/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged viewId.equals(oldViewId):"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcn/jiguang/analytics/android/f/o;->a(Z)V

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->onOldViewHide(Lcn/jiguang/analytics/android/c/a;)V

    :cond_1
    iput-object v1, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/jiguang/analytics/android/f/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    iput-boolean v2, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8 show:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8 oldViewId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8 oldIsTracked:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8 view:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChanged //\u4f4d\u7f6e\u6216\u5185\u5bb9\u5df2\u53d8 oldIsVisible:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/jiguang/analytics/android/f/o;->e:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/f/o;->d:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->c:Lcn/jiguang/analytics/android/c/a;

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/aop/JMMIAgent;->onOldViewShow(Lcn/jiguang/analytics/android/c/a;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jiguang/analytics/android/f/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScrollChangedshowshowshow //show show:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/o;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
