.class public final synthetic Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# static fields
.field public static final synthetic INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;

    invoke-direct {v0}, Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;-><init>()V

    sput-object v0, Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;->INSTANCE:Lio/sentry/react/-$$Lambda$RNSentryModule$UXBbDDjVrpP0efteWI-s6CIxXek;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 0

    invoke-static {p1}, Lio/sentry/react/RNSentryModule;->lambda$clearBreadcrumbs$4(Lio/sentry/Scope;)V

    return-void
.end method
