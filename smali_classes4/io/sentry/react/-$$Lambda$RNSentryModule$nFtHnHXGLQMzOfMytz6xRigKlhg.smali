.class public final synthetic Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field private final synthetic f$0:Lio/sentry/react/RNSentryModule;

.field private final synthetic f$1:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/react/RNSentryModule;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;->f$0:Lio/sentry/react/RNSentryModule;

    iput-object p2, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;->f$1:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;->f$0:Lio/sentry/react/RNSentryModule;

    iget-object v1, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$nFtHnHXGLQMzOfMytz6xRigKlhg;->f$1:Lcom/facebook/react/bridge/ReadableMap;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1, p1}, Lio/sentry/react/RNSentryModule;->lambda$startWithOptions$1$RNSentryModule(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
