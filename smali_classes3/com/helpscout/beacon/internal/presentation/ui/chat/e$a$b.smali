.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->CHAT_ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;-><init>(IIZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
