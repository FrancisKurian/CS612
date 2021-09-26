% xy array
X=[2 10; 2 5;8 4; 5 8;7 5; 6 4; 1 2; 4 9];

% kmeans standard output for k=3
[idx,C,sumd] = kmeans(X,2,'Distance','city')

% Elbow chart to determine optimal number of cluseters

nClusters=8; 
totSum=zeros(nClusters);  % preallocate the result
for i=1:nClusters
  [~,~,sumd]=kmeans(X,i);
  totSum(i)=sum(sumd);
end
plot(totSum)  % plot of totals versus number of clusters (same as index)