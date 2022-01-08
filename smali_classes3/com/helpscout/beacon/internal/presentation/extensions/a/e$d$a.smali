.class public final Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d$a;->a:Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d$a;->a:Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e$d;->a(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
