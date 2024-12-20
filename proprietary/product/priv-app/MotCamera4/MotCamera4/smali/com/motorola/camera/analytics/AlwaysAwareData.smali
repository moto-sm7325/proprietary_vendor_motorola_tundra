.class public final Lcom/motorola/camera/analytics/AlwaysAwareData;
.super Ljava/lang/Object;
.source "AlwaysAwareData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;,
        Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    }
.end annotation


# instance fields
.field public action:I

.field public detectionTime:J

.field public geoAvailable:Z

.field public mType:I

.field public networkSubtype:I

.field public networkType:I

.field public scanSuccess:I

.field public scanTime:J

.field public totFields:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    const/4 v3, 0x1

    .line 5
    iput v3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanSuccess:I

    .line 6
    iput-wide v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    .line 7
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    .line 8
    iput v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    .line 9
    iput-boolean v2, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    const/16 v0, 0x100

    .line 10
    iput v0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AlwaysAwareData{detectionTime="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scanTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", geoAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLensFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    const/16 v1, 0x7d

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
