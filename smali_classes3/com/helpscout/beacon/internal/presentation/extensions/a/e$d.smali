.class public final Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private b:Z

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;J)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->c:Lkotlin/jvm/functions/Function1;

    iput-wide p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->b:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->b:Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->a(Z)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->a:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance p1, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d$a;

    iget-wide v2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->d:J

    const-wide/16 v4, 0x5dc

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d$a;-><init>(Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;JJ)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
