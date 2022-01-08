.class final Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;IZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(IZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->a:I

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->b:Z

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->a:I

    if-eq p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->b:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "keyEvent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    :goto_1
    return p1
.end method
