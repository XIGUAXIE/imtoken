.class public abstract Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$a;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$e;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$f;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$c;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
