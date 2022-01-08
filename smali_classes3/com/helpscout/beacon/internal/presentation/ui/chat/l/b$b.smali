.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->j()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;Z)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
