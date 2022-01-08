.class final Lcom/helpscout/beacon/a/d/a/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/d/a/b;->b(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/a/b$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/a/b$a;->b:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/a/b$a;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/a/b$a;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/a/b$a;->b:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/a/b$a;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/a/d/a/b;->a(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
