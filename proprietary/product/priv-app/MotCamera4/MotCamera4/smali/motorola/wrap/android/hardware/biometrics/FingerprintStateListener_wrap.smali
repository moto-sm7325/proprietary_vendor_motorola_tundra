.class public abstract Lmotorola/wrap/android/hardware/biometrics/FingerprintStateListener_wrap;
.super Ljava/lang/Object;
.source "FingerprintStateListener_wrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmotorola/wrap/android/hardware/biometrics/FingerprintStateListener_wrap$State;,
        Lmotorola/wrap/android/hardware/biometrics/FingerprintStateListener_wrap$AuthenticationState;
    }
.end annotation


# static fields
.field public static final STATE_AUTH_OTHER:I = 0x4

.field public static final STATE_BP_AUTH:I = 0x3

.field public static final STATE_ENROLLING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_KEYGUARD_AUTH:I = 0x2

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_STARTED:I = 0xa

.field public static final STATE_PRE_STOPPED:I = 0xb

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STARTED_PAUSED:I = 0x2

.field public static final STATE_STARTED_PAUSED_ATTEMPTED:I = 0x3

.field public static final STATE_STOPPED:I = 0x4

.field public static final STATE_TAP_GESTURE_STARTED:I = 0xc

.field public static final STATE_TAP_GESTURE_STOPPED:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract onAuthenticationStateChanged(I)V
.end method

.method public abstract onStateChanged(I)V
.end method
