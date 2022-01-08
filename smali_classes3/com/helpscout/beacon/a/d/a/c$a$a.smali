.class final Lcom/helpscout/beacon/a/d/a/c$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/d/a/c$a;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/KoinApplication;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/d/a/c$a;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/a/c$a$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/a/c$a$a;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/KoinApplication;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/a/c$a$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;

    sget-object v0, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    invoke-static {p1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidLogger(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;)Lorg/koin/core/KoinApplication;

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/a/c$a$a;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/koin/core/KoinApplication;->modules(Ljava/util/List;)Lorg/koin/core/KoinApplication;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/d/a/c$a$a;->a(Lorg/koin/core/KoinApplication;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
