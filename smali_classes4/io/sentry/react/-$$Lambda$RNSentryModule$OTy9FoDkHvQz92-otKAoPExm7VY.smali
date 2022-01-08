.class public final synthetic Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;


# static fields
.field public static final synthetic INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;

    invoke-direct {v0}, Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;-><init>()V

    sput-object v0, Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;->INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$OTy9FoDkHvQz92-otKAoPExm7VY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-static {p1, p2}, Lio/sentry/react/RNSentryModule;->lambda$startWithOptions$0(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;

    move-result-object p1

    return-object p1
.end method
